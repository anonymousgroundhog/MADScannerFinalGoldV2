.class Lcom/brakefield/painter/Exporter$1;
.super Ljava/lang/Object;
.source "Exporter.java"

# interfaces
.implements Lcom/brakefield/painter/ExportManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/Exporter;->run(Landroid/content/Context;Landroid/view/View;Lcom/brakefield/painter/SharedMessageHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/Exporter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Lcom/brakefield/painter/SharedMessageHandler;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/Exporter;Lcom/brakefield/painter/SharedMessageHandler;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/brakefield/painter/Exporter$1;->this$0:Lcom/brakefield/painter/Exporter;

    iput-object p2, p0, Lcom/brakefield/painter/Exporter$1;->val$handler:Lcom/brakefield/painter/SharedMessageHandler;

    iput-object p3, p0, Lcom/brakefield/painter/Exporter$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/brakefield/painter/Exporter$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSavedToSharedStorage$0(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;)V
    .locals 1

    const v0, 0x7f120a68

    .line 97
    invoke-static {p0, p1, p2, v0}, Lcom/brakefield/painter/ShareManager;->showShareSnackBar(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I)V

    return-void
.end method


# virtual methods
.method public onSavedToExternalStorage(Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/brakefield/painter/Exporter$1;->val$handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0, p1}, Lcom/brakefield/painter/SharedMessageHandler;->launchExport(Ljava/lang/String;)V

    return-void
.end method

.method public onSavedToSharedStorage(Landroid/net/Uri;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/brakefield/painter/Exporter$1;->val$handler:Lcom/brakefield/painter/SharedMessageHandler;

    iget-object v1, p0, Lcom/brakefield/painter/Exporter$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/brakefield/painter/Exporter$1;->val$view:Landroid/view/View;

    new-instance v3, Lcom/brakefield/painter/Exporter$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2, p1}, Lcom/brakefield/painter/Exporter$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;)V

    invoke-interface {v0, v3}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
