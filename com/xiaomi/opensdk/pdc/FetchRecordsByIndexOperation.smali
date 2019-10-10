.class public Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/opensdk/pdc/k;

.field private final b:Lorg/json/JSONObject;

.field private final c:Lorg/json/JSONObject;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 6

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    .line 19
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->a:Lcom/xiaomi/opensdk/pdc/k;

    .line 20
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->b:Lorg/json/JSONObject;

    .line 21
    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->c:Lorg/json/JSONObject;

    .line 22
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->d:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->e:Z

    return-void

    .line 16
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->a(Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

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

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->a()Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/xiaomi/opensdk/pdc/k;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->a:Lcom/xiaomi/opensdk/pdc/k;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->e:Z

    return v0
.end method
