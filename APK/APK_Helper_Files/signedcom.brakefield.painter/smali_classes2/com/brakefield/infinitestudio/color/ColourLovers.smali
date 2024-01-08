.class public Lcom/brakefield/infinitestudio/color/ColourLovers;
.super Ljava/lang/Object;
.source "ColourLovers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/color/ColourLovers$GetColorsJSONTask;,
        Lcom/brakefield/infinitestudio/color/ColourLovers$GetPalettesJSONTask;,
        Lcom/brakefield/infinitestudio/color/ColourLovers$GetPatternsJSONTask;,
        Lcom/brakefield/infinitestudio/color/ColourLovers$OnPalettesCompletionListener;,
        Lcom/brakefield/infinitestudio/color/ColourLovers$OnPatternsCompletionListener;,
        Lcom/brakefield/infinitestudio/color/ColourLovers$OnColorsCompletionListener;,
        Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;,
        Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;,
        Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;
    }
.end annotation


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://www.colourlovers.com/api/"

.field public static final BLUE_TAG:Ljava/lang/String; = "blue"

.field public static final BRIGHT_RANGE:Ljava/lang/String; = "briRange"

.field public static final COLOR:Ljava/lang/String; = "https://www.colourlovers.com/api//color/6B4106"

.field public static final COLORS:Ljava/lang/String; = "https://www.colourlovers.com/api//colors"

.field public static final COLORS_NEW:Ljava/lang/String; = "https://www.colourlovers.com/api//colors/new"

.field public static final COLORS_RANDOM:Ljava/lang/String; = "https://www.colourlovers.com/api//colors/random"

.field public static final COLORS_TAG:Ljava/lang/String; = "colors"

.field public static final COLORS_TOP:Ljava/lang/String; = "https://www.colourlovers.com/api//colors/top"

.field public static final COLOR_TAG:Ljava/lang/String; = "color"

.field public static final COLOR_WIDTHS_TAG:Ljava/lang/String; = "colorWidths"

.field public static final FORMAT:Ljava/lang/String; = "format"

.field public static final GREEN_TAG:Ljava/lang/String; = "green"

.field public static final HEX:Ljava/lang/String; = "hex"

.field public static final HEX_LOGIC:Ljava/lang/String; = "hexLogic"

.field public static final HEX_TAG:Ljava/lang/String; = "hex"

.field public static final HSV_TAG:Ljava/lang/String; = "hsv"

.field public static final HUE_OPTION:Ljava/lang/String; = "hueOption"

.field public static final HUE_RANGE:Ljava/lang/String; = "hueRange"

.field public static final HUE_TAG:Ljava/lang/String; = "hue"

.field public static final ID_TAG:Ljava/lang/String; = "id"

.field public static final IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final LOVER:Ljava/lang/String; = "lover"

.field public static final ORDER:Ljava/lang/String; = "orderCol"

.field public static final PAGE:Ljava/lang/String; = "resultOffset"

.field public static final PALETTES:Ljava/lang/String; = "https://www.colourlovers.com/api//palettes"

.field public static final PALETTES_NEW:Ljava/lang/String; = "https://www.colourlovers.com/api//palettes/new"

.field public static final PALETTES_RANDOM:Ljava/lang/String; = "https://www.colourlovers.com/api//palettes/random"

.field public static final PALETTES_TAG:Ljava/lang/String; = "palettes"

.field public static final PALETTES_TOP:Ljava/lang/String; = "https://www.colourlovers.com/api//palettes/top"

.field public static final PALETTE_TAG:Ljava/lang/String; = "palette"

.field public static final PATTERNS:Ljava/lang/String; = "https://www.colourlovers.com/api//patterns"

.field public static final PATTERNS_NEW:Ljava/lang/String; = "https://www.colourlovers.com/api//patterns/new"

.field public static final PATTERNS_RANDOM:Ljava/lang/String; = "https://www.colourlovers.com/api//patterns/random"

.field public static final PATTERNS_TAG:Ljava/lang/String; = "patterns"

.field public static final PATTERNS_TOP:Ljava/lang/String; = "https://www.colourlovers.com/api//patterns/top"

.field public static final PATTERN_TAG:Ljava/lang/String; = "pattern"

.field public static final RED_TAG:Ljava/lang/String; = "red"

.field public static final RESULTS:Ljava/lang/String; = "numResults"

.field public static final RGB_TAG:Ljava/lang/String; = "rgb"

.field public static final SATURATION_TAG:Ljava/lang/String; = "saturation"

.field public static final SHOW_PALETTE_WIDTHS:Ljava/lang/String; = "showPaletteWidths"

.field public static final SORT:Ljava/lang/String; = "sortBy"

.field public static final TITLE_TAG:Ljava/lang/String; = "title"

.field public static final VALUE_TAG:Ljava/lang/String; = "value"

.field public static newestPalettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;"
        }
    .end annotation
.end field

.field public static newestPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;",
            ">;"
        }
    .end annotation
.end field

.field public static popularPalettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;"
        }
    .end annotation
.end field

.field public static popularPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->newestPalettes:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->popularPalettes:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->newestPatterns:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->popularPatterns:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColors(Ljava/lang/String;Lcom/brakefield/infinitestudio/color/ColourLovers$OnColorsCompletionListener;)V
    .locals 1

    .line 415
    new-instance v0, Lcom/brakefield/infinitestudio/color/ColourLovers$GetColorsJSONTask;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/color/ColourLovers$GetColorsJSONTask;-><init>()V

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/color/ColourLovers$GetColorsJSONTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getColorsSearchUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getColorsUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "&keywords="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " "

    const-string v0, "+"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColorsUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "?format=json&numResults="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPalettes(Ljava/lang/String;Lcom/brakefield/infinitestudio/color/ColourLovers$OnPalettesCompletionListener;)V
    .locals 1

    .line 493
    new-instance v0, Lcom/brakefield/infinitestudio/color/ColourLovers$GetPalettesJSONTask;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/color/ColourLovers$GetPalettesJSONTask;-><init>()V

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/color/ColourLovers$GetPalettesJSONTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getPalettesSearchUrl(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2, p3}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPalettesUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "&keywords="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " "

    const-string p3, "+"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPalettesUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "?format=json&numResults="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&showPaletteWidths=1&resultOffset="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatterns(Ljava/lang/String;Lcom/brakefield/infinitestudio/color/ColourLovers$OnPatternsCompletionListener;)V
    .locals 1

    .line 568
    new-instance v0, Lcom/brakefield/infinitestudio/color/ColourLovers$GetPatternsJSONTask;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/color/ColourLovers$GetPatternsJSONTask;-><init>()V

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/color/ColourLovers$GetPatternsJSONTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getPatternsSearchUrl(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2, p3}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPatternsUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p2, 0x0

    sget-object p2, Lorg/ejml/dense/row/decompose/EB/JlKLR;->JWVKeMVqftwoqn:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " "

    const-string p3, "+"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatternsUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "?format=json&numResults="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&resultOffset="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$populateNewestPalettes$0(Landroid/view/View$OnClickListener;Ljava/util/List;)V
    .locals 1

    .line 589
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->newestPalettes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 590
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$populateNewestPatterns$2(Landroid/view/View$OnClickListener;Ljava/util/List;)V
    .locals 1

    .line 615
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->newestPatterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 616
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$populatePopularPalettes$1(Landroid/view/View$OnClickListener;Ljava/util/List;)V
    .locals 1

    .line 602
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->popularPalettes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 603
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$populatePopularPatterns$3(Landroid/view/View$OnClickListener;Ljava/util/List;)V
    .locals 1

    .line 628
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->popularPatterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 629
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static populateNewestPalettes(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 585
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->newestPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x14

    const-string v2, "https://www.colourlovers.com/api//palettes/new"

    const/16 v3, 0x14

    .line 588
    invoke-static {v2, v3, v1}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPalettesUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda0;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPalettes(Ljava/lang/String;Lcom/brakefield/infinitestudio/color/ColourLovers$OnPalettesCompletionListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static populateNewestPatterns(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 609
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->newestPatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x14

    const-string v2, "https://www.colourlovers.com/api//patterns/new"

    const/16 v3, 0x14

    .line 614
    invoke-static {v2, v3, v1}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPatternsUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPatterns(Ljava/lang/String;Lcom/brakefield/infinitestudio/color/ColourLovers$OnPatternsCompletionListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static populatePopularPalettes(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 596
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->popularPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x14

    const-string v2, "https://www.colourlovers.com/api//palettes/top"

    const/16 v3, 0x14

    .line 601
    invoke-static {v2, v3, v1}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPalettesUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPalettes(Ljava/lang/String;Lcom/brakefield/infinitestudio/color/ColourLovers$OnPalettesCompletionListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static populatePopularPatterns(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 622
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->popularPatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x14

    const-string v2, "https://www.colourlovers.com/api//patterns/top"

    const/16 v3, 0x14

    .line 627
    invoke-static {v2, v3, v1}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPatternsUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda2;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/color/ColourLovers;->getPatterns(Ljava/lang/String;Lcom/brakefield/infinitestudio/color/ColourLovers$OnPatternsCompletionListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
