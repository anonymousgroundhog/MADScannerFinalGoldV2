.class public Lorg/ejml/FancyPrint;
.super Ljava/lang/Object;
.source "FancyPrint.java"


# instance fields
.field format:Ljava/text/DecimalFormat;

.field length:I

.field significant:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ejml/FancyPrint;->format:Ljava/text/DecimalFormat;

    const/16 v0, 0xb

    .line 32
    iput v0, p0, Lorg/ejml/FancyPrint;->length:I

    const/4 v0, 0x4

    .line 33
    iput v0, p0, Lorg/ejml/FancyPrint;->significant:I

    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;II)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/ejml/FancyPrint;->format:Ljava/text/DecimalFormat;

    .line 37
    iput p2, p0, Lorg/ejml/FancyPrint;->length:I

    .line 38
    iput p3, p0, Lorg/ejml/FancyPrint;->significant:I

    return-void
.end method


# virtual methods
.method public p(D)Ljava/lang/String;
    .locals 6

    .line 62
    iget-object v2, p0, Lorg/ejml/FancyPrint;->format:Ljava/text/DecimalFormat;

    const/4 v3, 0x0

    iget v4, p0, Lorg/ejml/FancyPrint;->length:I

    iget v5, p0, Lorg/ejml/FancyPrint;->significant:I

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->fancyString(DLjava/text/DecimalFormat;ZII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(D)Ljava/lang/String;
    .locals 3

    .line 55
    iget-object v0, p0, Lorg/ejml/FancyPrint;->format:Ljava/text/DecimalFormat;

    iget v1, p0, Lorg/ejml/FancyPrint;->length:I

    iget v2, p0, Lorg/ejml/FancyPrint;->significant:I

    invoke-static {p1, p2, v0, v1, v2}, Lorg/ejml/UtilEjml;->fancyString(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sf(D)Ljava/lang/String;
    .locals 3

    .line 48
    iget-object v0, p0, Lorg/ejml/FancyPrint;->format:Ljava/text/DecimalFormat;

    iget v1, p0, Lorg/ejml/FancyPrint;->length:I

    iget v2, p0, Lorg/ejml/FancyPrint;->significant:I

    invoke-static {p1, p2, v0, v1, v2}, Lorg/ejml/UtilEjml;->fancyStringF(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
