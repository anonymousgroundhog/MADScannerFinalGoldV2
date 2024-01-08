.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final processUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption;->lambda$onClick$4(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
