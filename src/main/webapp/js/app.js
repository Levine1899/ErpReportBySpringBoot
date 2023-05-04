var wrapper = document.getElementById("signature-pad"),
    clearButton = wrapper.querySelector("[data-action=clear]"),
    savePNGButton = wrapper.querySelector("[data-action=save-png]"),
    /*saveSVGButton = wrapper.querySelector("[data-action=save-svg]"),*/
    canvas = wrapper.querySelector("canvas"),
    signaturePad;

// Adjust canvas coordinate space taking into account pixel ratio,
// to make it look crisp on mobile devices.
// This also causes canvas to be cleared.
function resizeCanvas() {
    // When zoomed out to less than 100%, for some very strange reason,
    // some browsers report devicePixelRatio as less than 1
    // and only part of the canvas is cleared then.
    var ratio =  Math.max(window.devicePixelRatio || 1, 1);
    canvas.width = canvas.offsetWidth * ratio;
    canvas.height = canvas.offsetHeight * ratio;
    canvas.getContext("2d").scale(ratio, ratio);
}

window.onresize = resizeCanvas;
resizeCanvas();

signaturePad = new SignaturePad(canvas);

clearButton.addEventListener("click", function (event) {
    signaturePad.clear();
});

savePNGButton.addEventListener("click", function (event) {
    if (signaturePad.isEmpty()) {
        alert("请先签名");
    } else {
    	var m = $("#base61").val();
    	if(m==0){
    		$("#showimg1").attr("src", signaturePad.toDataURL());
            $("#base62").val(signaturePad.toDataURL('png'));
            signaturePad.clear();
            $("#signature-pad").css("visibility","hidden");
    	}else if(m==1){
    		$("#showimg2").attr("src", signaturePad.toDataURL());
            $("#base63").val(signaturePad.toDataURL('png'));
            signaturePad.clear();
            $("#signature-pad").css("visibility","hidden");
    	}else if(m==2){
    		$("#showimg3").attr("src", signaturePad.toDataURL());
            $("#base64").val(signaturePad.toDataURL('png'));
            signaturePad.clear();
            $("#signature-pad").css("visibility","hidden");
    	}
        
    }
});

function closePad(){
	signaturePad.clear();
    $("#signature-pad").css("visibility","hidden");
}
/*
saveSVGButton.addEventListener("click", function (event) {
    if (signaturePad.isEmpty()) {
        alert("Please provide signature first.");
    } else {
        window.open(signaturePad.toDataURL('image/svg+xml'));
    }
});
*/
