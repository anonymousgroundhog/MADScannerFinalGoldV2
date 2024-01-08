.class public Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;
.super Ljava/lang/Object;
.source "ChallengesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChallengeItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;
    }
.end annotation


# instance fields
.field challengeId:Ljava/lang/String;

.field endDate:J

.field name:Ljava/lang/String;

.field obstacles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field poster:Ljava/lang/String;

.field purpose:Ljava/lang/String;

.field shortDescription:Ljava/lang/String;

.field startDate:J

.field subChallenges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->obstacles:Ljava/util/List;

    .line 152
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->challengeId:Ljava/lang/String;

    .line 153
    iput p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    .line 154
    iput-wide p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->startDate:J

    .line 155
    iput-wide p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->endDate:J

    .line 156
    iput-object p7, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->subChallenges:Ljava/util/List;

    return-void
.end method
