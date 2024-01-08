.class public Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;
.super Landroid/widget/ImageView;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;
    }
.end annotation


# static fields
.field private static setLayerTypeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-direct {p0, p2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setSoftwareLayerType()V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/brakefield/infinitestudio/R$styleable;->SVGImageView:[I

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    :try_start_0
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->SVGImageView_svg:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    .line 93
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 97
    :cond_1
    :try_start_1
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->SVGImageView_svg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 100
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->internalSetImageURI(Landroid/net/Uri;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 105
    :cond_2
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setImageAsset(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    throw p2
.end method

.method private internalSetImageURI(Landroid/net/Uri;Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    new-instance p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$1;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/io/InputStream;

    aput-object p1, v2, v0

    invoke-virtual {p2, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1

    :catch_0
    if-eqz p2, :cond_0

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "File not found: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SVGImageView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private setSoftwareLayerType()V
    .locals 4

    .line 302
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 308
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SVGImageView"

    const-string v2, "Unexpected failure calling setLayerType"

    .line 312
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public setImageAsset(Ljava/lang/String;)V
    .locals 2

    .line 153
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .line 134
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;Landroid/content/Context;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->internalSetImageURI(Landroid/net/Uri;Z)Z

    return-void
.end method

.method public setSVG(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setSoftwareLayerType()V

    .line 124
    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null value passed to setSVG()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
