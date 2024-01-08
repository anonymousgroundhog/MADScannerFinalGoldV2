.class Lcom/brakefield/painter/activities/ActivityMain$1;
.super Landroid/view/View;
.source "ActivityMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivityMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityMain;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityMain;Landroid/content/Context;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$1;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$1;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->access$000(Lcom/brakefield/painter/activities/ActivityMain;Landroid/content/res/Configuration;)V

    return-void
.end method
