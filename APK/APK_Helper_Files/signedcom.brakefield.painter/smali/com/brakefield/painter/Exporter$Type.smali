.class public Lcom/brakefield/painter/Exporter$Type;
.super Ljava/lang/Object;
.source "Exporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/Exporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Type"
.end annotation


# static fields
.field public static final JPEG:I = 0x1

.field public static final PNG:I = 0x0

.field public static final PROJECT:I = 0x5

.field public static final PROJECT_TEMPLATE:I = 0x6

.field public static final PSD:I = 0x2

.field public static final WEBP:I = 0x4

.field public static final ZIP:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/Exporter;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/Exporter;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/brakefield/painter/Exporter$Type;->this$0:Lcom/brakefield/painter/Exporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
