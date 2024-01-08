.class abstract Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteCollectionViewControllerDelegate;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ColorWheelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PaletteCollectionViewControllerDelegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1528
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;)V
    .locals 0

    .line 1528
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteCollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPalette()Lcom/brakefield/painter/nativeobjs/color/PaletteNative;
.end method
