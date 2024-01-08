.class public Lcom/brakefield/painter/experiments/Experiments;
.super Ljava/lang/Object;
.source "Experiments.java"


# static fields
.field public static final values:Lcom/brakefield/painter/experiments/Values;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/brakefield/painter/experiments/Values;

    invoke-direct {v0}, Lcom/brakefield/painter/experiments/Values;-><init>()V

    sput-object v0, Lcom/brakefield/painter/experiments/Experiments;->values:Lcom/brakefield/painter/experiments/Values;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProIndicatorColor()I
    .locals 1

    .line 23
    sget v0, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    return v0
.end method

.method public static getProIndicatorDrawable()I
    .locals 1

    const v0, 0x7f080421

    return v0
.end method
