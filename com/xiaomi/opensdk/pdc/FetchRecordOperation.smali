.class public Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/opensdk/pdc/k;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 15
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->a:Lcom/xiaomi/opensdk/pdc/k;

    .line 16
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->b:Ljava/lang/String;

    return-void

    .line 12
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->a(Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

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
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->a()Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/xiaomi/opensdk/pdc/k;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->a:Lcom/xiaomi/opensdk/pdc/k;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->b:Ljava/lang/String;

    return-object v0
.end method
