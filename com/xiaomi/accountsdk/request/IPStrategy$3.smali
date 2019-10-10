.class Lcom/xiaomi/accountsdk/request/IPStrategy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/request/IPStrategy;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/accountsdk/request/IPStrategy;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;)V
    .registers 3

    .line 193
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$3;->b:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 196
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$3;->b:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$3;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "IPStrategy"

    const-string v2, "config, network changed from %s to %s, will NOT update anything"

    const/4 v3, 0x2

    .line 199
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$3;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_25
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$3;->b:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->b()V

    return-void
.end method
