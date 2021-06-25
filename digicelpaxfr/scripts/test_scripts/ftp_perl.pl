#!/usr/bin/perl -w

use strict;
use Net::FTP;

my $host = "panwfprdapp000";
my $username = "anonymous";
my $pwd = "anonymous";
my $searchstr = `date -d "1 day ago" +"%Y%m%d"`;
my $namestr = ".*`$searchstr`.*";

# Crear conexion
my $ftp = Net::FTP->new("$host") or die("No se pudo conectar al servidor: $!");
$ftp->login($username,$pwd) or die("Login incorrecto: $!");
#ACCIONES QUE QUEREMOS EJECUTAR EN EL SERVIDOR

print("Change Rem Dir\n");
$ftp->cwd("/ASEP_Files");
my $searchingstr = ".*" . $searchstr . ".*" ;

print( " variable de busqueda= $searchingstr \n");
$ftp->get($_) for grep /`$namestr`/, $ftp->ls;

print("closing session\n");

$ftp->quit or die("No se puedo desconectar del servidor: $!\n");

