.class public Lcom/brakefield/painter/billing/PainterTrial;
.super Ljava/lang/Object;
.source "PainterTrial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/billing/PainterTrial$TimeTrialStrategy;,
        Lcom/brakefield/painter/billing/PainterTrial$TrialStrategy;,
        Lcom/brakefield/painter/billing/PainterTrial$PreferencesStoringStrategy;,
        Lcom/brakefield/painter/billing/PainterTrial$StoringStrategy;,
        Lcom/brakefield/painter/billing/PainterTrial$Callback;,
        Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;,
        Lcom/brakefield/painter/billing/PainterTrial$TrialState;
    }
.end annotation


# static fields
.field private static final DEBUG_DAYS_AS_MINUTES:Z = true

.field private static final TRIAL_PERIOD_IN_DAYS:I = 0x7


# instance fields
.field private final callback:Lcom/brakefield/painter/billing/PainterTrial$Callback;

.field private final properties:Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;

.field private final propertiesStore:Lcom/brakefield/painter/billing/PainterTrial$StoringStrategy;

.field private final trialStrategy:Lcom/brakefield/painter/billing/PainterTrial$TrialStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/brakefield/painter/billing/PainterTrial$Callback;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/brakefield/painter/billing/PainterTrial$TimeTrialStrategy;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/brakefield/painter/billing/PainterTrial$TimeTrialStrategy;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/painter/billing/PainterTrial;->trialStrategy:Lcom/brakefield/painter/billing/PainterTrial$TrialStrategy;

    .line 35
    new-instance v0, Lcom/brakefield/painter/billing/PainterTrial$PreferencesStoringStrategy;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/billing/PainterTrial$PreferencesStoringStrategy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brakefield/painter/billing/PainterTrial;->propertiesStore:Lcom/brakefield/painter/billing/PainterTrial$StoringStrategy;

    .line 36
    iput-object p2, p0, Lcom/brakefield/painter/billing/PainterTrial;->callback:Lcom/brakefield/painter/billing/PainterTrial$Callback;

    .line 37
    invoke-interface {v0}, Lcom/brakefield/painter/billing/PainterTrial$StoringStrategy;->load()Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/billing/PainterTrial;->properties:Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;

    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/brakefield/painter/billing/PainterTrial$TrialState;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/brakefield/painter/billing/PainterTrial;->trialStrategy:Lcom/brakefield/painter/billing/PainterTrial$TrialStrategy;

    iget-object v1, p0, Lcom/brakefield/painter/billing/PainterTrial;->properties:Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;

    invoke-interface {v0, v1}, Lcom/brakefield/painter/billing/PainterTrial$TrialStrategy;->getState(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    move-result-object v0

    return-object v0
.end method

.method public getRemainingDays()I
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/brakefield/painter/billing/PainterTrial;->trialStrategy:Lcom/brakefield/painter/billing/PainterTrial$TrialStrategy;

    iget-object v1, p0, Lcom/brakefield/painter/billing/PainterTrial;->properties:Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;

    invoke-interface {v0, v1}, Lcom/brakefield/painter/billing/PainterTrial$TrialStrategy;->getRemainingDays(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)I

    move-result v0

    return v0
.end method

.method public startTrial()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/brakefield/painter/billing/PainterTrial;->properties:Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->access$002(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;J)J

    .line 50
    iget-object v0, p0, Lcom/brakefield/painter/billing/PainterTrial;->propertiesStore:Lcom/brakefield/painter/billing/PainterTrial$StoringStrategy;

    iget-object v1, p0, Lcom/brakefield/painter/billing/PainterTrial;->properties:Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;

    invoke-interface {v0, v1}, Lcom/brakefield/painter/billing/PainterTrial$StoringStrategy;->save(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)V

    .line 51
    iget-object v0, p0, Lcom/brakefield/painter/billing/PainterTrial;->callback:Lcom/brakefield/painter/billing/PainterTrial$Callback;

    invoke-interface {v0}, Lcom/brakefield/painter/billing/PainterTrial$Callback;->onTrialStarting()V

    return-void
.end method
