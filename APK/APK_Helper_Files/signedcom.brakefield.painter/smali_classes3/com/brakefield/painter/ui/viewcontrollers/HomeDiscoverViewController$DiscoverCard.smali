.class Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;
.super Ljava/lang/Object;
.source "HomeDiscoverViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiscoverCard"
.end annotation


# instance fields
.field backNavigation:Z

.field download:Ljava/lang/String;

.field imageUrl:Ljava/lang/String;

.field superTitle:Ljava/lang/String;

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->superTitle:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->title:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->imageUrl:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->url:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->download:Ljava/lang/String;

    .line 108
    iput-boolean p6, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->backNavigation:Z

    return-void
.end method


# virtual methods
.method public open(Landroid/app/Activity;)V
    .locals 3

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_WEBSITE_URL"

    .line 113
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_SHOW_BACK_NAVIGATION"

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
