.class public Lcom/xiaomi/opensdk/file/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/file/a/f;


# static fields
.field private static final a:Ljava/lang/String; = "RequestUploadParameter"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/a/g;->e:J

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/a/g;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 9

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/a/g;->e:J

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/a/g;->g:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/g;->b:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/a/g;->c:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/xiaomi/opensdk/file/a/g;->d:Ljava/lang/String;

    .line 33
    iput-wide p4, p0, Lcom/xiaomi/opensdk/file/a/g;->e:J

    .line 34
    iput-object p6, p0, Lcom/xiaomi/opensdk/file/a/g;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/a/g;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/xiaomi/opensdk/file/a/g;->e:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "kss"

    .line 92
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/opensdk/file/a/g;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "filename"

    .line 93
    iget-object v2, p0, Lcom/xiaomi/opensdk/file/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    .line 94
    iget-wide v2, p0, Lcom/xiaomi/opensdk/file/a/g;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sha1"

    .line 95
    iget-object v2, p0, Lcom/xiaomi/opensdk/file/a/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mimeType"

    .line 96
    iget-object v2, p0, Lcom/xiaomi/opensdk/file/a/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/a/g;->g:Ljava/lang/String;

    return-object v0
.end method
