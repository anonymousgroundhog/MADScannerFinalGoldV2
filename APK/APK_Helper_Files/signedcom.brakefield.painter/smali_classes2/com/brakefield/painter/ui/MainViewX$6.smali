.class Lcom/brakefield/painter/ui/MainViewX$6;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainViewX;->setStylusButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MainViewX;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainViewX;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$6;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryButtonClicked()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$6;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    sget v1, Lcom/brakefield/painter/ui/MainView;->stylusPrimaryButton:I

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->handleStylusButton(I)V

    return-void
.end method

.method public onSecondaryButtonClicked()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$6;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    sget v1, Lcom/brakefield/painter/ui/MainView;->stylusSecondaryButton:I

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->handleStylusButton(I)V

    return-void
.end method
