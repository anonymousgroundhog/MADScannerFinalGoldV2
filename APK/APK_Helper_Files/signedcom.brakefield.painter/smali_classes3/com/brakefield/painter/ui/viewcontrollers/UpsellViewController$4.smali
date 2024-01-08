.class synthetic Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$4;
.super Ljava/lang/Object;
.source "UpsellViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$brakefield$painter$billing$PainterTrial$TrialState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 180
    invoke-static {}, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->values()[Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$4;->$SwitchMap$com$brakefield$painter$billing$PainterTrial$TrialState:[I

    :try_start_0
    sget-object v1, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->AVAILABLE:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    invoke-virtual {v1}, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$4;->$SwitchMap$com$brakefield$painter$billing$PainterTrial$TrialState:[I

    sget-object v1, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->RUNNING:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    invoke-virtual {v1}, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$4;->$SwitchMap$com$brakefield$painter$billing$PainterTrial$TrialState:[I

    sget-object v1, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->ENDED:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    invoke-virtual {v1}, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
