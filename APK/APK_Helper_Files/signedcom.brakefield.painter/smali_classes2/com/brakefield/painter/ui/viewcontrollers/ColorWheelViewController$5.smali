.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;
.super Ljava/lang/Object;
.source "ColorWheelViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->openPaletteSelector(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fromPaletteNative(Lcom/brakefield/painter/nativeobjs/color/PaletteNative;)Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;
    .locals 4

    .line 495
    new-instance v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 496
    :goto_0
    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 497
    new-instance v2, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1, v1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->colorAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;->set(I)V

    .line 499
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->addColor(Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDefaultPalettes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 507
    new-instance v1, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->getSystemColorPalette(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;-><init>(J)V

    invoke-direct {p0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;->fromPaletteNative(Lcom/brakefield/painter/nativeobjs/color/PaletteNative;)Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v1, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->getSystemColorPalette(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;-><init>(J)V

    invoke-direct {p0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;->fromPaletteNative(Lcom/brakefield/painter/nativeobjs/color/PaletteNative;)Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onPaletteFileImported(Ljava/lang/String;)V
    .locals 0

    .line 475
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->importPaletteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public onPaletteImageImported(Ljava/lang/String;)V
    .locals 4

    .line 479
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 483
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_0

    const/high16 v3, 0x44000000    # 512.0f

    int-to-float v2, v2

    div-float/2addr v3, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v2, 0x1

    .line 486
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 489
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    const p1, 0x7f1209d0

    .line 490
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brakefield/painter/PainterLib;->importPaletteImage(Ljava/lang/String;[B)V

    :cond_1
    return-void
.end method

.method public onPaletteSelected(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v0

    iget-object v1, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->setName(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->clearColors()V

    const/4 v0, 0x0

    .line 469
    :goto_0
    iget-object v1, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v1

    iget-object v2, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;

    iget v2, v2, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;->color:I

    invoke-virtual {v1, v2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->addColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 471
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$400(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
