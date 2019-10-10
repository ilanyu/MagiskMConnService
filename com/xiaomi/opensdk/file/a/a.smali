.class public Lcom/xiaomi/opensdk/file/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/file/a/f;


# static fields
.field private static final a:Ljava/lang/String; = "CommitParameter"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/a/a;->f:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/a/a;->f:J

    .line 29
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/a;->b:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/a/a;->c:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/xiaomi/opensdk/file/a/a;->d:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/xiaomi/opensdk/file/a/a;->e:Ljava/lang/String;

    .line 33
    iput-wide p5, p0, Lcom/xiaomi/opensdk/file/a/a;->f:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    .line 73
    iput-wide p1, p0, Lcom/xiaomi/opensdk/file/a/a;->f:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public e()J
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/xiaomi/opensdk/file/a/a;->f:J

    return-wide v0
.end method

.method public f()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v1, "kss"

    .line 104
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/opensdk/file/a/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    const-string v1, "uploadId"

    .line 106
    iget-object v2, p0, Lcom/xiaomi/opensdk/file/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    .line 107
    iget-wide v2, p0, Lcom/xiaomi/opensdk/file/a/a;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sha1"

    .line 108
    iget-object v2, p0, Lcom/xiaomi/opensdk/file/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
