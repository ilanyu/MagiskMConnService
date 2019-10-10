.class Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/http/IKscTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/FileTranceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChunkListaner"
.end annotation


# instance fields
.field final synthetic a:Lcn/kuaipan/android/kss/FileTranceListener;

.field private b:Lcn/kuaipan/android/kss/FileTranceListener;

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/FileTranceListener;JJ)V
    .registers 7

    .line 75
    iput-object p1, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->a:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->b:Lcn/kuaipan/android/kss/FileTranceListener;

    const-wide/16 p1, 0x0

    .line 79
    iput-wide p1, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->c:J

    .line 80
    iput-wide p1, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->d:J

    .line 82
    invoke-virtual {p0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->c(J)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->d(J)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->b:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->b(J)V

    return-void
.end method

.method public b(J)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->b:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->c(J)V

    return-void
.end method

.method public c(J)V
    .registers 5

    .line 98
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->c:J

    sub-long/2addr p1, v0

    .line 99
    invoke-virtual {p0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->e(J)V

    return-void
.end method

.method public d(J)V
    .registers 5

    .line 105
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->d:J

    sub-long/2addr p1, v0

    .line 106
    invoke-virtual {p0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->f(J)V

    return-void
.end method

.method public e(J)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->b:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-static {v0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->a(Lcn/kuaipan/android/kss/FileTranceListener;J)V

    .line 113
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->c:J

    return-void
.end method

.method public f(J)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->b:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-static {v0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->b(Lcn/kuaipan/android/kss/FileTranceListener;J)V

    .line 119
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->d:J

    return-void
.end method
