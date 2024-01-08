.class public Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;
.super Ljava/lang/Object;
.source "ResourcesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Resource"
.end annotation


# instance fields
.field public item:Ljava/lang/Object;

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Ljava/lang/Object;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isPreset()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    return v0
.end method
