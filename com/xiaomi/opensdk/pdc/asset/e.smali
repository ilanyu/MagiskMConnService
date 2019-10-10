.class public Lcom/xiaomi/opensdk/pdc/asset/e;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "SourceFile"


# instance fields
.field a:Lorg/json/JSONObject;

.field b:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;ILorg/json/JSONObject;)V
    .registers 9

    .line 13
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;)V

    .line 14
    iput p7, p0, Lcom/xiaomi/opensdk/pdc/asset/e;->b:I

    .line 15
    iput-object p8, p0, Lcom/xiaomi/opensdk/pdc/asset/e;->a:Lorg/json/JSONObject;

    return-void
.end method
