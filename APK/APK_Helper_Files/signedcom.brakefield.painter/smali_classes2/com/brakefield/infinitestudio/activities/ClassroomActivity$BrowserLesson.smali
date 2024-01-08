.class public Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;
.super Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;
.source "ClassroomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ClassroomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BrowserLesson"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    .line 152
    invoke-direct/range {p0 .. p5}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public open()V
    .locals 3

    .line 157
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
