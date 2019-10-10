.class public Lcn/kuaipan/android/a/l;
.super Lcn/kuaipan/android/a/e;
.source "SourceFile"


# instance fields
.field public final bI:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const v0, 0x35db9

    .line 8
    invoke-direct {p0, v0}, Lcn/kuaipan/android/a/e;-><init>(I)V

    const-wide/16 v0, 0x1388

    .line 5
    iput-wide v0, p0, Lcn/kuaipan/android/a/l;->bI:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const v0, 0x35db9

    .line 12
    invoke-direct {p0, v0, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    const-wide/16 v0, 0x1388

    .line 5
    iput-wide v0, p0, Lcn/kuaipan/android/a/l;->bI:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const v0, 0x35db9

    .line 20
    invoke-direct {p0, v0, p1, p2}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p1, 0x1388

    .line 5
    iput-wide p1, p0, Lcn/kuaipan/android/a/l;->bI:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4

    const v0, 0x35db9

    .line 16
    invoke-direct {p0, v0, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/Throwable;)V

    const-wide/16 v0, 0x1388

    .line 5
    iput-wide v0, p0, Lcn/kuaipan/android/a/l;->bI:J

    return-void
.end method
