.class public abstract Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/http/IKscTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/http/IKscTransferListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KscTransferListener"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "KscTransferListener"


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->b:J

    .line 23
    iput-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->c:J

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->d:J

    .line 25
    iput-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->e:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 3

    .line 29
    iput-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->b:J

    return-void
.end method

.method public abstract a(JJ)V
.end method

.method public final b(J)V
    .registers 3

    .line 34
    iput-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->c:J

    return-void
.end method

.method public abstract b(JJ)V
.end method

.method public final c(J)V
    .registers 5

    .line 63
    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->d:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-void

    .line 67
    :cond_7
    iput-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->d:J

    .line 68
    iget-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->d:J

    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->b:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->a(JJ)V

    return-void
.end method

.method public final d(J)V
    .registers 5

    .line 73
    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->e:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-void

    .line 76
    :cond_7
    iput-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->e:J

    .line 77
    iget-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->e:J

    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->c:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->b(JJ)V

    return-void
.end method

.method public final e(J)V
    .registers 5

    .line 39
    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->d:J

    .line 41
    :try_start_5
    iget-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->d:J

    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->b:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->a(JJ)V
    :try_end_c
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_c} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p1

    const-string p2, "KscTransferListener"

    const-string v0, "Meet exception in onDataSended()"

    .line 45
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void

    :catch_16
    move-exception p1

    .line 43
    throw p1
.end method

.method public final f(J)V
    .registers 5

    .line 51
    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->e:J

    .line 53
    :try_start_5
    iget-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->e:J

    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->c:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->b(JJ)V
    :try_end_c
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_c} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p1

    const-string p2, "KscTransferListener"

    const-string v0, "Meet exception in onDataReceived()"

    .line 57
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void

    :catch_16
    move-exception p1

    .line 55
    throw p1
.end method
