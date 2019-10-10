.class public Lcom/xiaomi/opensdk/file/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/xiaomi/opensdk/file/a/d;

.field private final c:Lcom/xiaomi/opensdk/file/a/e;

.field private d:Lcom/xiaomi/opensdk/file/a/i;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;)V
    .registers 9

    const/4 v3, 0x0

    const-wide/32 v4, 0x400000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/file/a/h;-><init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;J)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/file/a/h;-><init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V
    .registers 10

    const-wide/32 v4, 0x400000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/file/a/h;-><init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;J)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/h;->a:Ljava/io/File;

    .line 53
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/a/h;->b:Lcom/xiaomi/opensdk/file/a/d;

    .line 54
    iput-object p3, p0, Lcom/xiaomi/opensdk/file/a/h;->c:Lcom/xiaomi/opensdk/file/a/e;

    .line 55
    iput-wide p4, p0, Lcom/xiaomi/opensdk/file/a/h;->i:J

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->a:Ljava/io/File;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/xiaomi/opensdk/file/a/h;->i:J

    return-void
.end method

.method public a(Lcom/xiaomi/opensdk/file/a/i;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/h;->d:Lcom/xiaomi/opensdk/file/a/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/h;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/xiaomi/opensdk/file/a/h;->j:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/h;->f:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/h;->g:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/xiaomi/opensdk/file/a/d;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->b:Lcom/xiaomi/opensdk/file/a/d;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/h;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/xiaomi/opensdk/file/a/e;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->c:Lcom/xiaomi/opensdk/file/a/e;

    return-object v0
.end method

.method public f()Lcom/xiaomi/opensdk/file/a/i;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->d:Lcom/xiaomi/opensdk/file/a/i;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/file/a/h;->j:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lcom/xiaomi/opensdk/file/a/h;->i:J

    return-wide v0
.end method
