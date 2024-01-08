.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$4;
.super Ljava/lang/Object;
.source "ColorWheelViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/UIManager$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Landroid/view/View$OnClickListener;ILcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/brakefield/infinitestudio/ui/UIManager$Value<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

.field final synthetic val$opacityListener:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$4;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$4;->val$opacityListener:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Float;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$4;->val$opacityListener:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;

    invoke-interface {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;->get()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$4;->get()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Float;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$4;->val$opacityListener:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;->set(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 443
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$4;->set(Ljava/lang/Float;)V

    return-void
.end method
