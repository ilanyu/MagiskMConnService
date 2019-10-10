.class public Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Z

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lorg/json/JSONObject;ZLjava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;",
            "J",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/j;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;)V

    .line 76
    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->a:Lorg/json/JSONObject;

    .line 77
    iput-boolean p8, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->b:Z

    .line 78
    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/xiaomi/opensdk/pdc/j;
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/pdc/j;

    return-object p1
.end method

.method public a()Lorg/json/JSONObject;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->b:Z

    return v0
.end method

.method public c()I
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0
.end method
