numberplates=1;
numbertimes=1;
numberposis=50;
numberchannels=2;
cnt=0;
for (i=1;i<=numberplates;i++){
	for (j=1;j<=numbertimes;j++){
		if(j==6){
			j=j+1;
		}
		else{
		for (k=1;k<=numberposis;k++){
			for (o=1;o<=numberchannels;o++){
				cnt=cnt+1;
				str=i*(j);
				pp=IJ.pad(str, 2);
				qq=IJ.pad(k, 2);
				//print(i);
				//print(j);
				//print(pp);
				//open("/Users/alex/Documents/GartnerLab/Experiments/2015/Mar12(Prolif)/Raw/Plate"+i+"Time"+j+"-Image Export-"+pp+"/Plate"+i+"Time"+j+"-Image Export-"+pp+"_s"+qq+"c"+o+"_ORG.tif");
				open("/Users/paulson/Desktop/prolif/interaction proliferation assay plate 1 tp 1 01_s"+qq+"c"+o+"_ORG.tif");
				//run("Image Sequence...", "open=[/Users/alex/Documents/GartnerLab/Experiments/2015/Mar12(Prolif)/Raw/Plate"+i+"Time"+j+"-Image Export-"+pp+"] number=147 starting=1 increment=1 scale=100 file=[] or=[] sort");
				//run("DeInterleave ", "number=3");
				//print("hello");
				montimg=getTitle;
				selectImage(montimg);
				
				makeRectangle(0, 0, 512, 512);
				run("Copy");
				run("Internal Clipboard");
				selectImage(montimg);
				makeRectangle(1024, 0, 512, 512);
				run("Copy");
				run("Internal Clipboard");
				selectImage(montimg);
				makeRectangle(2048, 0, 512, 512);
				run("Copy");
				run("Internal Clipboard");
				selectImage(montimg);
				makeRectangle(0, 1024, 512, 512);
				run("Copy");
				run("Internal Clipboard");
				selectImage(montimg);
				makeRectangle(1024, 1024, 512, 512);
				run("Copy");
				run("Internal Clipboard");
				selectImage(montimg);
				makeRectangle(2048, 1024, 512, 512);
				run("Copy");
				run("Internal Clipboard");
				selectImage(montimg);
				makeRectangle(0, 2048, 512, 512);
				run("Copy");
				run("Internal Clipboard");
				selectImage(montimg);
				makeRectangle(1024, 2048, 512, 512);
				run("Copy");
				run("Internal Clipboard");
				selectImage(montimg);
				makeRectangle(2048, 2048, 512, 512);
				run("Copy");
				run("Internal Clipboard");
				
			
				
				selectImage(montimg);
				close();
				
				run("Images to Stack", "name=Stack title=[] use");
				run("Make Montage...", "columns=3 rows=3 scale=1 first=1 last=9 increment=1 border=0 font=12");
				run("Save", "save=/Users/paulson/Desktop/prolif/Montages/P"+i+"_T"+j+"_S"+k+"_C"+o+"_Montage.tif");
				close();
				close();
				
			};
		};
	};
	};
};
