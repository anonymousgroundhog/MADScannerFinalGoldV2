.class public final synthetic Lcom/brakefield/infinitestudio/FileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/FileManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/FileManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/brakefield/infinitestudio/FileManager;->lambda$getFiles$0(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
