.class public final Lcom/xiaomi/opensdk/pdc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/UploadOperation;


# instance fields
.field private final a:Lcom/xiaomi/opensdk/pdc/k;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lorg/json/JSONObject;

.field private final g:Lorg/json/JSONArray;

.field private final h:J

.field private i:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/l;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONArray;)V
    .registers 12

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->i:Lorg/json/JSONObject;

    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    if-eqz p3, :cond_25

    if-eqz p6, :cond_25

    const-wide/16 v0, -0x1

    cmp-long v0, p7, v0

    if-eqz v0, :cond_25

    .line 35
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/l;->a:Lcom/xiaomi/opensdk/pdc/k;

    .line 36
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/l;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/l;->c:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/l;->d:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/l;->e:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/xiaomi/opensdk/pdc/l;->f:Lorg/json/JSONObject;

    .line 41
    iput-wide p7, p0, Lcom/xiaomi/opensdk/pdc/l;->h:J

    .line 42
    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/l;->g:Lorg/json/JSONArray;

    return-void

    .line 32
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->b(Lcom/xiaomi/opensdk/pdc/l;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/l;->a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->a(Lcom/xiaomi/opensdk/pdc/l;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->i:Lorg/json/JSONObject;

    .line 55
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Lcom/xiaomi/opensdk/pdc/k;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->a:Lcom/xiaomi/opensdk/pdc/k;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public j()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/l;->h:J

    return-wide v0
.end method

.method public k()Lorg/json/JSONArray;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/l;->g:Lorg/json/JSONArray;

    return-object v0
.end method
