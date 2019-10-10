.class Lcom/xiaomi/accountsdk/request/IPStrategy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:Lcom/xiaomi/accountsdk/request/IPStrategy;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;Ljava/lang/String;J)V
    .registers 9

    .line 139
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->g:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->d:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    iput-object p6, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->e:Ljava/lang/String;

    iput-wide p7, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 142
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->g:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->b:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->c:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->d:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    invoke-virtual {v0, v1, v3, v4}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;)Landroid/util/Pair;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->g:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->e:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 146
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->d:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IPStrategy"

    const-string v3, "ping: network changed from %s to %s, will NOT update anything"

    .line 148
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->e:Ljava/lang/String;

    aput-object v4, v2, v5

    aput-object v1, v2, v6

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    if-nez v0, :cond_4a

    .line 153
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->g:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->f(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_4a
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->d:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->a(J)V

    .line 159
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 160
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 162
    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->d()J

    move-result-wide v4

    mul-long v2, v2, v4

    iget-wide v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->f:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_73

    .line 163
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->g:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 165
    :cond_73
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->g:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->f(Ljava/lang/String;)V

    :goto_7a
    return-void
.end method
