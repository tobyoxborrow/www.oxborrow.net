#!/usr/bin/env perl
#
# Create a new content file.
# Optionally also creates a directory for the file.
#

use strict;
use warnings;

use File::Spec;
use Getopt::Long qw(GetOptions);
use POSIX qw(strftime);


sub longDate
{
	return strftime("%Y-%m-%dT%H:%M:%S%z", localtime());
}

sub shortDate
{
	return strftime("%Y-%m-%d", localtime());
}


sub makeDefaultFilename
{
	my $filename = lc(shift);
	$filename =~ s/\s+/-/g;
	$filename =~ s/[^-a-z0-9]//g;
	$filename =~ s/-+/-/g;
	return $filename;
}


sub promptUser
{
	print "Title: ";
	my $title = <STDIN>;
	chomp $title;

	my $defaultFilename = makeDefaultFilename($title);

	print "Filename: [$defaultFilename] ";
	my $filename = <STDIN>;
	chomp $filename;

	if (!$filename) {
		$filename = $defaultFilename;
	}
	
	return $title, $filename;
}


sub createHugoContentFile
{
	my $filename = shift;
	my $date = shift;
	my $title = shift;

	# Expected date format: 2001-08-01T20:56:16+00:00
	if (length($date) == 10) {
		if ($date eq shortDate()) {
			# if the date was the default, we can use the real time
			$date = longDate();
		}
	}

	open my $fh, '>', $filename or die("Can't open $filename: $!\n");

	print $fh <<"__HERE__";
+++
title = '$title'
date = $date
draft = true
tags = []
+++

__HERE__

	close $fh or die("Can't close $filename: $!\n");
}


sub usage
{
	my $die_message = shift;

	print << '__HERE__';
usage:
	-date       Optional date
	-title      Optional title
	-filename   Optional filename
	-content    Content type
	-dir        Create directory for post
__HERE__

	die($die_message) if $die_message;

	exit 0;
}


sub main 
{
	my $date = shortDate();
	my $title = '';
	my $filename = '';
	my $content = 'blog';
	my $dir = 0;
    GetOptions(
		'date:s' => \$date,
		'title:s' => \$title,
		'filename=s' => \$filename,
		'content:s' => \$content,
		'dir' => \$dir,
		'help' => sub { usage() },
	);

	if (!$title && !$filename) {
		($title, $filename) = promptUser();
	}

	if (!$title) {
		usage("Title is required.\n");
	}

	if (!$filename) {
		$filename = makeDefaultFilename($title);
	}

	$filename =~ s/\.(md|html|htm)$//;

	$filename = "${date}-${filename}";

	my $contentFilename = File::Spec->catfile( "content", $content, "$filename.md" );

	if ($dir) {
		mkdir File::Spec->catfile( "content", $content, $filename );
		$contentFilename = File::Spec->catfile( "content", $content, $filename, "index.md" );
	}

	createHugoContentFile($contentFilename, $date, $title);

	print "Created $contentFilename\n";

	exit 0;
}


main();
exit -1;
