.class Lcom/brakefield/infinitestudio/FontFamily$Info;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Info"
.end annotation


# instance fields
.field final lastModified:Ljava/lang/String;

.field final subsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/brakefield/infinitestudio/FontFamily;

.field final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/FontFamily;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/brakefield/infinitestudio/FontFamily$Info;->this$0:Lcom/brakefield/infinitestudio/FontFamily;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/FontFamily$Info;->subsets:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/brakefield/infinitestudio/FontFamily$Info;->version:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/brakefield/infinitestudio/FontFamily$Info;->lastModified:Ljava/lang/String;

    return-void
.end method
