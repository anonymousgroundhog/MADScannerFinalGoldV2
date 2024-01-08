.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attrib"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field final operation:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

.field public final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->operation:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    .line 89
    iput-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    return-void
.end method
