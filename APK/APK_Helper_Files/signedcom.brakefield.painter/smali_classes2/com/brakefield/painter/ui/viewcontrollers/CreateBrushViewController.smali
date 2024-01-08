.class public Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "CreateBrushViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;)Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    return-object p0
.end method

.method static synthetic lambda$show$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 189
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$show$6(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 196
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method

.method static synthetic lambda$show$7(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x42

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 203
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method

.method static synthetic lambda$show$8(ILjava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    .line 209
    invoke-static {p0, p1}, Lcom/brakefield/painter/PainterLib;->setBrushType(ILjava/lang/String;)V

    return-void
.end method

.method private refreshHeadSourceImage()V
    .locals 3

    .line 213
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadCustomName()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadResourceName()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 217
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushHeadsPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 220
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->res:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->headView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private refreshTextureSourceImage()V
    .locals 3

    .line 227
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeTextureCustomName()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeTextureResourceName()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 231
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushTexturesPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 234
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->res:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->textureView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$show$0$com-brakefield-painter-ui-viewcontrollers-CreateBrushViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 2

    .line 62
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->isPreset()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 63
    iget-object p3, p3, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadResourceName(Ljava/lang/String;)V

    .line 67
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadCustomName(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p3, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 70
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadResourceName(Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadCustomName(Ljava/lang/String;)V

    .line 73
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->refreshHeadSourceImage()V

    .line 74
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$show$1$com-brakefield-painter-ui-viewcontrollers-CreateBrushViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p3, p1, v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->launchBrushHeadResourcesDialog(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)V

    return-void
.end method

.method synthetic lambda$show$2$com-brakefield-painter-ui-viewcontrollers-CreateBrushViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 2

    .line 101
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->isPreset()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 102
    iget-object p3, p3, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 104
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureResourceName(Ljava/lang/String;)V

    .line 106
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureCustomName(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p3, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 109
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureResourceName(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureCustomName(Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->refreshTextureSourceImage()V

    .line 113
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$show$3$com-brakefield-painter-ui-viewcontrollers-CreateBrushViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 100
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p3, p1, v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->launchBrushTextureResourcesDialog(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)V

    return-void
.end method

.method synthetic lambda$show$4$com-brakefield-painter-ui-viewcontrollers-CreateBrushViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 166
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object p3, p3, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 167
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/brakefield/painter/brushes/BrushPackManager;->getNewBrushName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 170
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->createBrush(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->saveBrush()V

    const/4 p4, 0x0

    .line 173
    invoke-static {p4, p3}, Lcom/brakefield/painter/PainterLib;->setBrushType(ILjava/lang/String;)V

    .line 174
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setCurrentBrushDisplayName(Ljava/lang/String;)V

    .line 176
    sput-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 178
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/brakefield/painter/brushes/BrushPackManager;->refreshCreatedFolder()V

    .line 179
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->removePopupDismissListener()V

    .line 181
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showBrushSettings(Landroid/app/Activity;)V

    .line 182
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopups()V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 12

    .line 44
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v0

    .line 45
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    move-result-object v2

    iput-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->res:Landroid/content/res/Resources;

    .line 51
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v5, 0x14

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->headView:Landroid/widget/ImageView;

    new-instance v4, Lcom/brakefield/infinitestudio/ui/TileDrawable;

    const/16 v5, 0x28

    const/16 v6, 0x80

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-direct {v4, v7}, Lcom/brakefield/infinitestudio/ui/TileDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->headView:Landroid/widget/ImageView;

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_1

    const-string v2, ""

    .line 80
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setBrushHeadResourceName(Ljava/lang/String;)V

    .line 81
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setBrushHeadCustomName(Ljava/lang/String;)V

    .line 84
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadCustomName()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadResourceName()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 89
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushHeadsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 92
    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result p2

    .line 93
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->res:Landroid/content/res/Resources;

    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v3

    .line 96
    :goto_1
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->headView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->textureView:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/TileDrawable;

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v2, v4}, Lcom/brakefield/infinitestudio/ui/TileDrawable;-><init>(I)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->textureView:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->editName:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 119
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->brushTypesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$1;

    invoke-direct {v4, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/16 v6, 0x8

    new-array v7, v6, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v8, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v9, 0x7f1209e1

    .line 150
    invoke-static {v9}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v9, 0x7f1209ce

    .line 151
    invoke-static {v9}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v7, v2

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v8, 0x7f120ab8

    .line 152
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v2, v8, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v7, v10

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v8, 0x7f120b37

    .line 153
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v2, v8, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v7, v9

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v8, 0x7f1209e0

    .line 154
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v2, v8, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v7, v10

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v8, 0x7f120929

    .line 155
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v8, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x5

    aput-object v2, v7, v6

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v8, 0x7f1200aa

    .line 156
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v8, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x6

    aput-object v2, v7, v6

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v8, 0x7f1200b0

    .line 157
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v8, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v7, v9

    invoke-direct {v5, p1, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    .line 119
    invoke-static {p2, v4, v5, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 160
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    sput-object p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreview:Landroid/widget/ImageView;

    .line 161
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 165
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    .line 185
    new-instance p3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p3, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 186
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p1, 0x7f1200ea

    .line 187
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p1, 0x7f12009e

    .line 188
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p3, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 192
    invoke-virtual {p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 194
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object p3, p3, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->editName:Landroid/widget/EditText;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda5;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 201
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->binding:Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    iget-object p3, p3, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->editName:Landroid/widget/EditText;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda6;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda7;

    invoke-direct {p2, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
