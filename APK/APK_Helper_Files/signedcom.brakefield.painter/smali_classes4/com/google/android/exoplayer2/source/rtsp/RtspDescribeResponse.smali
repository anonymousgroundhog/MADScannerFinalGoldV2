.class final Lcom/google/android/exoplayer2/source/rtsp/RtspDescribeResponse;
.super Ljava/lang/Object;
.source "RtspDescribeResponse.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final headers:Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

.field public final sessionDescription:Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;

.field public final status:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;ILcom/google/android/exoplayer2/source/rtsp/SessionDescription;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspDescribeResponse;->headers:Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    .line 45
    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspDescribeResponse;->status:I

    .line 46
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspDescribeResponse;->sessionDescription:Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;

    return-void
.end method
