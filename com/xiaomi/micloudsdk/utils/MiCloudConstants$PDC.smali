.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PDC"
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/update"

.field public static final B:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records"

.field public static final C:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/batch"

.field public static final D:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/index"

.field public static final E:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/upload"

.field public static final F:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/commit"

.field public static final G:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/%s"

.field public static final H:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/%s/playurl"

.field public static final I:Ljava/lang/String; = "type"

.field public static final J:Ljava/lang/String; = "eTag"

.field public static final K:Ljava/lang/String; = "syncToken"

.field public static final L:Ljava/lang/String; = "cursor"

.field public static final M:Ljava/lang/String; = "limit"

.field public static final N:Ljava/lang/String; = "id"

.field public static final O:Ljava/lang/String; = "record"

.field public static final P:Ljava/lang/String; = "batchContent"

.field public static final Q:Ljava/lang/String; = "indexName"

.field public static final R:Ljava/lang/String; = "beginKey"

.field public static final S:Ljava/lang/String; = "endKey"

.field public static final T:Ljava/lang/String; = "isReverse"

.field public static final U:Ljava/lang/String; = "path"

.field public static final V:Ljava/lang/String; = "params"

.field public static final W:Ljava/lang/String; = "type"

.field public static final X:Ljava/lang/String; = "contentJson"

.field public static final Y:Ljava/lang/String; = "assetList"

.field public static final Z:Ljava/lang/String; = "record"

.field public static final a:I = 0x0

.field public static final aa:Ljava/lang/String; = "id"

.field public static final ab:Ljava/lang/String; = "eTag"

.field public static final ac:Ljava/lang/String; = "uniqueKey"

.field public static final ad:Ljava/lang/String; = "conflictType"

.field public static final ae:Ljava/lang/String; = "conflictRecord"

.field public static final af:Ljava/lang/String; = "status"

.field public static final ag:Ljava/lang/String; = "parentId"

.field public static final ah:Ljava/lang/String; = "list"

.field public static final ai:Ljava/lang/String; = "syncToken"

.field public static final aj:Ljava/lang/String; = "cursor"

.field public static final ak:Ljava/lang/String; = "hasMore"

.field public static final al:Ljava/lang/String; = "records"

.field public static final am:Ljava/lang/String; = "watermark"

.field public static final an:Ljava/lang/String; = "beginKey"

.field public static final ao:Ljava/lang/String; = "normal"

.field public static final ap:Ljava/lang/String; = "deleted"

.field public static final aq:Ljava/lang/String; = "result"

.field public static final ar:Ljava/lang/String; = "reason"

.field public static final as:Ljava/lang/String; = "description"

.field public static final at:Ljava/lang/String; = "data"

.field public static final au:Ljava/lang/String; = "code"

.field public static final av:Ljava/lang/String; = "retriable"

.field public static final aw:I = 0xc8

.field public static final b:I = 0x2711

.field public static final c:I = 0x2719

.field public static final d:I = 0x271b

.field public static final e:I = 0xc352

.field public static final f:I = 0xcf08

.field public static final g:I = 0x2718

.field public static final h:I = 0x9c40

.field public static final i:I = 0x9c41

.field public static final j:I = 0x9c42

.field public static final k:I = 0x9c43

.field public static final l:I = 0x9c44

.field public static final m:I = 0x9c45

.field public static final n:I = 0x9c46

.field public static final o:I = 0xcb20

.field public static final p:I = 0xc361

.field public static final q:I = 0xc353

.field public static final r:Ljava/lang/String; = "eTag"

.field public static final s:Ljava/lang/String; = "id"

.field public static final t:Ljava/lang/String; = "none"

.field public static final u:Ljava/lang/String; = "uniqueKey"

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records"

.field public static final x:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s"

.field public static final y:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/children"

.field public static final z:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/delete"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_9

    :cond_7
    const-string v0, "http://pdc.micloud.xiaomi.net"

    :goto_9
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
