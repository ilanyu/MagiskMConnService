.class public Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/opensdk/pdc/j;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/j;)V
    .registers 8

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;)V

    .line 42
    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->a:Lcom/xiaomi/opensdk/pdc/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/j;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->a:Lcom/xiaomi/opensdk/pdc/j;

    return-object v0
.end method
