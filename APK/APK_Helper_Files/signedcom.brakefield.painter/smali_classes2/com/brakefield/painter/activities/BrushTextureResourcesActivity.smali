.class public Lcom/brakefield/painter/activities/BrushTextureResourcesActivity;
.super Lcom/brakefield/painter/activities/ResourcesActivity;
.source "BrushTextureResourcesActivity.java"


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
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushTexturesViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushTexturesViewController;-><init>()V

    return-object v0
.end method
