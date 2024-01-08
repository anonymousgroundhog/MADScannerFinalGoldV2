.class Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;
.super Ljava/lang/Object;
.source "GoogleFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field public final fileUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;->fileUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 71
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 72
    :cond_1
    instance-of v1, p1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;->name:Ljava/lang/String;

    check-cast p1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method
