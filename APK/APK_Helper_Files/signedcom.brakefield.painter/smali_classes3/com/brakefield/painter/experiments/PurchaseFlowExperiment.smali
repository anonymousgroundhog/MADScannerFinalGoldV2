.class public Lcom/brakefield/painter/experiments/PurchaseFlowExperiment;
.super Lcom/brakefield/painter/experiments/Experiment;
.source "PurchaseFlowExperiment.java"


# static fields
.field private static final NO_TRIAL_STRATEGY:I = 0x0

.field private static final VALUE_STRATEGY:Ljava/lang/String; = "PURCHASE_FLOW_STRATEGY"


# direct methods
.method constructor <init>(Lcom/brakefield/painter/experiments/Values;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/brakefield/painter/experiments/Experiment;-><init>(Lcom/brakefield/painter/experiments/Values;)V

    return-void
.end method


# virtual methods
.method protected populate(Lcom/brakefield/painter/experiments/Values;)V
    .locals 2

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PURCHASE_FLOW_STRATEGY"

    invoke-virtual {p1, v1, v0}, Lcom/brakefield/painter/experiments/Values;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
