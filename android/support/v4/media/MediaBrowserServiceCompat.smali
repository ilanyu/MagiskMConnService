.class public abstract Landroid/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$Result;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final KEY_SEARCH_RESULTS:Ljava/lang/String; = "search_results"
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final RESULT_ERROR:I = -0x1

.field static final RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED:I = 0x2

.field static final RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED:I = 0x4

.field static final RESULT_FLAG_OPTION_NOT_HANDLED:I = 0x1

.field static final RESULT_OK:I = 0x0

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field static final TAG:Ljava/lang/String; = "MBServiceCompat"


# instance fields
.field final mConnections:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

.field final mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

.field private mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

.field mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 144
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    .line 146
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 9

    .line 1089
    iget-object v0, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    .line 1091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/Pair;

    .line 1094
    iget-object v3, v2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v3, :cond_13

    iget-object v2, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1095
    invoke-static {p4, v2}, Landroid/support/v4/media/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    .line 1099
    :cond_2e
    new-instance v1, Landroid/support/v4/util/Pair;

    invoke-direct {v1, p3, p4}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    iget-object p3, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    invoke-virtual {p0, p1, p2, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    return-void
.end method

.method applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    .line 1180
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 1181
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne v0, v1, :cond_16

    if-ne p2, v1, :cond_16

    return-object p1

    :cond_16
    mul-int v1, p2, v0

    add-int v2, v1, p2

    if-ltz v0, :cond_35

    const/4 v0, 0x1

    if-lt p2, v0, :cond_35

    .line 1187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt v1, p2, :cond_26

    goto :goto_35

    .line 1190
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le v2, p2, :cond_30

    .line 1191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1193
    :cond_30
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1188
    :cond_35
    :goto_35
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final getBrowserRootHints()Landroid/os/Bundle;
    .registers 2

    .line 1026
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getBrowserRootHints()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1007
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method isValidPackage(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1072
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1073
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 1074
    array-length v1, p2

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1d

    .line 1076
    aget-object v3, p2, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    return v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_9

    .line 1041
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1039
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_12

    if-eqz p2, :cond_a

    .line 1062
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1060
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options cannot be null in notifyChildrenChanged"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1057
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 846
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 831
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 832
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_34

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_34

    .line 834
    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1e

    .line 835
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_3b

    .line 836
    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2c

    .line 837
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_3b

    .line 839
    :cond_2c
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_3b

    .line 833
    :cond_34
    :goto_34
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    .line 841
    :goto_3b
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onCreate()V

    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x1

    .line 929
    invoke-virtual {p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 930
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .registers 3
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x2

    .line 952
    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    const/4 p1, 0x0

    .line 953
    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 p1, 0x4

    .line 979
    invoke-virtual {p3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    const/4 p1, 0x0

    .line 980
    invoke-virtual {p3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V
    .registers 11

    .line 1136
    new-instance v6, Landroid/support/v4/media/MediaBrowserServiceCompat$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1161
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-nez p3, :cond_13

    .line 1163
    invoke-virtual {p0, p1, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    goto :goto_16

    .line 1165
    :cond_13
    invoke-virtual {p0, p1, v6, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    :goto_16
    const/4 p3, 0x0

    .line 1167
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1169
    invoke-virtual {v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result p3

    if-eqz p3, :cond_20

    return-void

    .line 1170
    :cond_20
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " id="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method performLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .registers 5

    .line 1198
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;

    invoke-direct {v0, p0, p1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    .line 1212
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1213
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    const/4 p2, 0x0

    .line 1214
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1216
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    .line 1217
    :cond_14
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method performSearch(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .registers 6

    .line 1224
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;

    invoke-direct {v0, p0, p1, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    .line 1240
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1241
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    const/4 p2, 0x0

    .line 1242
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1244
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    .line 1245
    :cond_14
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onSearch must call detach() or sendResult() before returning for query="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_f

    .line 1110
    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 1113
    :cond_f
    iget-object v2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3d

    .line 1115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1116
    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/util/Pair;

    iget-object v4, v4, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v4, :cond_1d

    .line 1119
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_1d

    .line 1122
    :cond_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_3d

    .line 1123
    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return v1
.end method

.method public setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 3

    if-eqz p1, :cond_16

    .line 995
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v0, :cond_e

    .line 998
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 999
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void

    .line 996
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The session token has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 993
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session token may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
