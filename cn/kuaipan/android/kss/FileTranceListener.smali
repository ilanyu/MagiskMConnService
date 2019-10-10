.class public Lcn/kuaipan/android/kss/FileTranceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;
    }
.end annotation


# instance fields
.field private final a:Lcn/kuaipan/android/http/IKscTransferListener;

.field private final b:Z

.field private c:J


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/kuaipan/android/kss/FileTranceListener;->a:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 14
    iput-boolean p2, p0, Lcn/kuaipan/android/kss/FileTranceListener;->b:Z

    return-void
.end method

.method static synthetic a(Lcn/kuaipan/android/kss/FileTranceListener;J)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->f(J)V

    return-void
.end method

.method static synthetic b(Lcn/kuaipan/android/kss/FileTranceListener;J)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->g(J)V

    return-void
.end method

.method private f(J)V
    .registers 5

    .line 52
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->b:Z

    if-nez v0, :cond_9

    .line 53
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    .line 55
    :cond_9
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->a:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->e(J)V

    return-void
.end method

.method private g(J)V
    .registers 5

    .line 59
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->b:Z

    if-eqz v0, :cond_9

    .line 60
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    .line 62
    :cond_9
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->a:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->f(J)V

    return-void
.end method


# virtual methods
.method public a(J)Lcn/kuaipan/android/http/IKscTransferListener;
    .registers 11

    .line 18
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->b:Z

    if-eqz v0, :cond_10

    .line 19
    new-instance v7, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;

    iget-wide v5, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v6}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;-><init>(Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/FileTranceListener;JJ)V

    return-object v7

    .line 21
    :cond_10
    new-instance v7, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;

    iget-wide v3, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;-><init>(Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/FileTranceListener;JJ)V

    return-object v7
.end method

.method public b(J)V
    .registers 6

    .line 26
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->b:Z

    if-nez v0, :cond_c

    .line 27
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->a:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-wide v1, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcn/kuaipan/android/http/IKscTransferListener;->a(J)V

    :cond_c
    return-void
.end method

.method public c(J)V
    .registers 6

    .line 32
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->b:Z

    if-eqz v0, :cond_c

    .line 33
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->a:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-wide v1, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcn/kuaipan/android/http/IKscTransferListener;->b(J)V

    :cond_c
    return-void
.end method

.method public d(J)V
    .registers 4

    .line 38
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->b:Z

    if-nez v0, :cond_6

    .line 39
    iput-wide p1, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    .line 41
    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->a:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->c(J)V

    return-void
.end method

.method public e(J)V
    .registers 4

    .line 45
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->b:Z

    if-eqz v0, :cond_6

    .line 46
    iput-wide p1, p0, Lcn/kuaipan/android/kss/FileTranceListener;->c:J

    .line 48
    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->a:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->d(J)V

    return-void
.end method
