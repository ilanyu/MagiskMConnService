.class public Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/opensdk/pdc/k;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    .line 20
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->a:Lcom/xiaomi/opensdk/pdc/k;

    .line 21
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->c:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->d:Ljava/lang/String;

    return-void

    .line 17
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->a(Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

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
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->a()Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/xiaomi/opensdk/pdc/k;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->a:Lcom/xiaomi/opensdk/pdc/k;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->d:Ljava/lang/String;

    return-object v0
.end method
