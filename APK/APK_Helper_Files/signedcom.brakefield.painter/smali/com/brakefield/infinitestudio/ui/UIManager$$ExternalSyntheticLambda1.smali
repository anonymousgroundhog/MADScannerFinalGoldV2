.class public final synthetic Lcom/brakefield/infinitestudio/ui/UIManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Z

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$$ExternalSyntheticLambda1;->f$1:F

    return-void
.end method


# virtual methods
.method public final getDisplayValue(F)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Z

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$$ExternalSyntheticLambda1;->f$1:F

    invoke-static {v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->lambda$setupSlider$1(ZFF)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
