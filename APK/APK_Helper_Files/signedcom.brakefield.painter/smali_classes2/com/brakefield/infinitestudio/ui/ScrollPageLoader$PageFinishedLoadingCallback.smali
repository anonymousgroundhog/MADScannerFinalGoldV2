.class public Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;
.super Ljava/lang/Object;
.source "ScrollPageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageFinishedLoadingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;->this$0:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pageLoaded(I)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;->this$0:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->access$002(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;Z)Z

    .line 30
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;->this$0:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->access$102(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;I)I

    return-void
.end method
