.class public final Lcom/xiaomi/opensdk/pdc/a;
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

.field private h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/opensdk/pdc/a;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .registers 9

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->h:Lorg/json/JSONObject;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    if-eqz p6, :cond_1b

    .line 31
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/a;->a:Lcom/xiaomi/opensdk/pdc/k;

    .line 32
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/a;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/a;->c:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/a;->d:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/a;->e:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/xiaomi/opensdk/pdc/a;->f:Lorg/json/JSONObject;

    .line 37
    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/a;->g:Lorg/json/JSONArray;

    return-void

    .line 29
    :cond_1b
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

    .line 42
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->b(Lcom/xiaomi/opensdk/pdc/a;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

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
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/a;->a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

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

    .line 47
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->h:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 48
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->a(Lcom/xiaomi/opensdk/pdc/a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->h:Lorg/json/JSONObject;

    .line 50
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Lcom/xiaomi/opensdk/pdc/k;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->a:Lcom/xiaomi/opensdk/pdc/k;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public j()Lorg/json/JSONArray;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/a;->g:Lorg/json/JSONArray;

    return-object v0
.end method
