.class public Lcn/kuaipan/kss/KssDef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/kss/KssDef$OnUpDownload;,
        Lcn/kuaipan/kss/KssDef$NetState;,
        Lcn/kuaipan/kss/KssDef$KssAPIResult;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "OK"

.field public static final B:Ljava/lang/String; = "FILE_EXISTED"

.field public static final C:Ljava/lang/String; = "CONTINUE_UPLOAD"

.field public static final D:Ljava/lang/String; = "BLOCK_COMPLETED"

.field public static final E:Ljava/lang/String; = "upload_block_chunk"

.field public static a:I = 0x400000

.field public static b:I = 0x10000

.field public static c:I = 0x2000

.field public static d:I = 0x3

.field public static final e:Ljava/lang/String; = "stat"

.field public static final f:Ljava/lang/String; = "blocks"

.field public static final g:Ljava/lang/String; = "block_meta"

.field public static final h:Ljava/lang/String; = "block_metas"

.field public static final i:Ljava/lang/String; = "block_infos"

.field public static final j:Ljava/lang/String; = "file_meta"

.field public static final k:Ljava/lang/String; = "commit_meta"

.field public static final l:Ljava/lang/String; = "commit_metas"

.field public static final m:Ljava/lang/String; = "secure_key"

.field public static final n:Ljava/lang/String; = "proxies"

.field public static final o:Ljava/lang/String; = "url"

.field public static final p:Ljava/lang/String; = "urls"

.field public static final q:Ljava/lang/String; = "stoid"

.field public static final r:Ljava/lang/String; = "upload_id"

.field public static final s:Ljava/lang/String; = "node_urls"

.field public static final t:Ljava/lang/String; = "is_existed"

.field public static final u:Ljava/lang/String; = "chunk_pos"

.field public static final v:Ljava/lang/String; = "body_sum"

.field public static final w:Ljava/lang/String; = "Dest-Url"

.field public static final x:Ljava/lang/String; = "size"

.field public static final y:Ljava/lang/String; = "sha1"

.field public static final z:Ljava/lang/String; = "md5"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
