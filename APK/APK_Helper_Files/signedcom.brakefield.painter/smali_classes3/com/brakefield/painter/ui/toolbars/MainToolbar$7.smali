.class Lcom/brakefield/painter/ui/toolbars/MainToolbar$7;
.super Ljava/lang/Object;
.source "MainToolbar.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupSwatchSlider(Lcom/brakefield/infinitestudio/color/SwatchSlider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

.field final synthetic val$palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Lcom/brakefield/painter/nativeobjs/color/PaletteNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1168
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$7;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$7;->val$palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorAt(I)I
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$7;->val$palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->colorAt(I)I

    move-result p1

    return p1
.end method

.method public colorCount()I
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$7;->val$palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayColor(I)I
    .locals 0

    return p1
.end method
