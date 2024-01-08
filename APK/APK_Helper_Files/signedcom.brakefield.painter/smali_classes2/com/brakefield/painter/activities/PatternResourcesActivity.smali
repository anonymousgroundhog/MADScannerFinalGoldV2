.class public Lcom/brakefield/painter/activities/PatternResourcesActivity;
.super Lcom/brakefield/painter/activities/ResourcesActivity;
.source "PatternResourcesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getResourcesViewController()Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
    .locals 1

    .line 10
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/PatternsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/PatternsViewController;-><init>()V

    return-object v0
.end method
