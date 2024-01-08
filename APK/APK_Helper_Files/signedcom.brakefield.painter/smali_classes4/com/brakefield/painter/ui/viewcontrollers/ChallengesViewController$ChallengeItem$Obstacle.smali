.class public Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;
.super Ljava/lang/Object;
.source "ChallengesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Obstacle"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field icon:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;->icon:I

    .line 135
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;->description:Ljava/lang/String;

    return-void
.end method
