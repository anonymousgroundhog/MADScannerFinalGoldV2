.class public final Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;
.super Ljava/lang/Object;
.source "UpsellViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseFlowInfo"
.end annotation


# instance fields
.field public final launchedFrom:Ljava/lang/String;

.field public trialInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;->launchedFrom:Ljava/lang/String;

    return-void
.end method
