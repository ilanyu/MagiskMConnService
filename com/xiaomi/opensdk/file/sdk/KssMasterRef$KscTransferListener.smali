.class Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;
.super Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KscTransferListener"
.end annotation


# instance fields
.field public a:Lcom/xiaomi/opensdk/file/a/d;

.field final synthetic b:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/a/d;)V
    .registers 3

    .line 227
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->b:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    invoke-direct {p0}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->a:Lcom/xiaomi/opensdk/file/a/d;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->a:Lcom/xiaomi/opensdk/file/a/d;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->a:Lcom/xiaomi/opensdk/file/a/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/opensdk/file/a/d;->a(JJ)V

    :cond_9
    return-void
.end method

.method public b(JJ)V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->a:Lcom/xiaomi/opensdk/file/a/d;

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->a:Lcom/xiaomi/opensdk/file/a/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/opensdk/file/a/d;->b(JJ)V

    :cond_9
    return-void
.end method
