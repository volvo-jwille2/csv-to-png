open(file_E, 'data.csv');



while ( <file_E> ) {
	@spl = split(';', $_);
	
	$filename = 'image' . $spl[0] . '.svg';
	
	open(TEMPLATE, 'template.svg');
	open(OUT, '>', $filename);
	

	while ( <TEMPLATE> ) {
		$svg = $_ =~ s/placeholder1/$spl[1]/r;
		$svg = $svg =~ s/placeholder2/$spl[2]/r;

		print OUT $svg;
	}
	
	
	close(OUT);
	close(TEMPLATE);
    
}

close($file_E);