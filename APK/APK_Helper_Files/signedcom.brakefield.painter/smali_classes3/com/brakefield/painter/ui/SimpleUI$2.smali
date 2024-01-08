.class Lcom/brakefield/painter/ui/SimpleUI$2;
.super Ljava/lang/Object;
.source "SimpleUI.java"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/SimpleUI;->showFillToolColorsPanel(Landroid/app/Activity;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/SimpleUI;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fillTool:Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1479
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$2;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI$2;->val$fillTool:Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()F
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$2;->val$fillTool:Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillOpacity()F

    move-result v0

    return v0
.end method

.method public onChanged()V
    .locals 2

    .line 1490
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$2;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 1491
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$2;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public set(F)V
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$2;->val$fillTool:Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->setFillOpacity(F)V

    return-void
.end method
