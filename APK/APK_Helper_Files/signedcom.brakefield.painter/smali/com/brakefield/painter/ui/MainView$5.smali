.class Lcom/brakefield/painter/ui/MainView$5;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainView;->setStylusButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MainView;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainView;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$5;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryButtonClicked()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$5;->this$0:Lcom/brakefield/painter/ui/MainView;

    sget v1, Lcom/brakefield/painter/ui/MainView;->stylusPrimaryButton:I

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainView;->handleStylusButton(I)V

    return-void
.end method

.method public onSecondaryButtonClicked()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$5;->this$0:Lcom/brakefield/painter/ui/MainView;

    sget v1, Lcom/brakefield/painter/ui/MainView;->stylusSecondaryButton:I

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainView;->handleStylusButton(I)V

    return-void
.end method
